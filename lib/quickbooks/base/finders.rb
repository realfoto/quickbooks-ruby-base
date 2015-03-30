module Quickbooks
  class Base
    module Finders
      def qbuilder
        Quickbooks::Util::QueryBuilder.new
      end

      def sql_builder(where, options = {})
        options[:entity] ||= @entity
        options[:select] ||= '*'
        options[:limit] ||= 1
        "Select #{options[:select]} From #{options[:entity]} WHERE #{where} LIMIT #{options[:limit]}"
      end

      def display_name_sql(display_name, options = {})
        options[:select] ||= 'Id, DisplayName'
        where = qbuilder.clause("DisplayName", "=", display_name)
        sql_builder(where, options)
      end

      def find_by_name(display_name, options = {})
        sql = display_name_sql(display_name, options)
        @service.query(sql)
      end
    end
  end
end

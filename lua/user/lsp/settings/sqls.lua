return {
  settings = {
    sqls = {
      connections = {
        {
          driver = "postgresql",
          dataSourceName = "host=0.0.0.0 port=5432 user=postgres password=docker dbname=postgres",
        },
      },
    },
  },
}

dataSource {
	pooled = true
	driverClassName = "com.mysql.jdbc.Driver"
	username = "innovative_web"
	password = "java1234"
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.provider_class='com.opensymphony.oscache.hibernate.OSCacheProvider'
}
// environment specific settings
environments {
	development {
		dataSource {
                    // dbCreate = "create-drop" // one of 'create', 'create-drop','update'
                    dbCreate = 'update'
                    url = "jdbc:mysql://localhost/innovative_web_db?useUnicode=true&characterEncoding=utf-8&autoReconnect=true"
		}
                hibernate {
                    show_sql=true
                }
	}
	test {
		dataSource {
                    dbCreate = "update"
                    url = "jdbc:mysql://localhost/innovative_web_db?useUnicode=true&characterEncoding=utf-8&autoReconnect=true"
		}
	}
	production {
		dataSource {
                    //dbCreate = "update"
                    url = "jdbc:mysql://localhost/innovative_web_db?useUnicode=true&characterEncoding=utf-8&autoReconnect=true"
		}
        }
}

require 'unirest'

response = Unirest.post("http://localhost:3000/api_contacts"
                        parameters {first_name: "Trey",
                                    last_name: "Barnes",
                                    email: "u-bezy@yahoo.com",
                                    phone_number: "301-633-4734",
                                    
                                    }
puts.JSON.pretty_generate(response.body)











                        )
# <b> 💸 Rocketpay </b>

### <b> Project made at NLW#04 hosted by Rocketseat </b>

* Payment api that allows transactions between users. Also allows user to deposit and withdraw your own account.

# 🏃 <b> Run the application </b>

* ``git clone https://github.com/newton-peixoto/rocketpay_elixir.git``

* ``cd rocketpay_elixir``

* `` docker-compose up --build -d ``

# ℹ️ <b> Routes </b>

### <b> HTTP POST </b>

* <b> /api/users </b> <br>
        ```{
            "name" :"some_name",
            "email" : "something@email.com" ,
            "age": 20,
            "password" : "123456",
            "nickname": "nick_name"
        }   ``` 
<br> <br>
* <b> /api/accounts/{account_id}/deposit </b> <br> 
        ```{
            "value" : "10"
        } ``` 
<br> <br>
* <b> /api/accounts/{account_id}/withdraw </b> <br> 
       ``` {
            "value" : 10
        } ```
<br> <br>
* <b> /api/accounts/transaction </b> <br> 
        ```{
            "value" : 10,
            "from"  : account_id,
            "to"    : account_id
        }```
<br> <br>
<b> For authenticated routes use header "Authorization: Basic YmFuYW5hOm5hbmljYTEyMw=="  </br>

# 🚀 <b> Improvements </b>

* <b> JWT auth instead of fixed basic auth </b>
* <b> Write more tests </b>
* <b> Allow user to schedule transactions </b>
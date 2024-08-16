# Jenkins Task 3

1. setup a pipeline in jenkins to deploy sample react app into server
2. create one server to host sample react app [terrafrom]
3. Load balancer with 443 rule and 80 [redirect to 443] [terraform]
4. Target group which will talk to server [teraform]
5. Configure server and install docker and then install jenkins on server [ansible] [attach jenkins to tg and alb (terraform)]
6. Create docker compose with health check in jinja template and send to server [ansible]
7. Set one jenkins pipeline to achieve the above step [execute terraform and ansible within pipeline]
8. Configure one more jenkins piepline which will work as deployment pipeline [create docker image, push to docker hub and then update docker compose to run the updated image] (no one will use the method we covered in session)
9. Third pipeline with cron of 5 min which will work as healthcheck pipeline for the hosted react app and if healthcheck fails then it will send notification

---

> note: for notification you will use slack [no one will set notification in any of the channel]
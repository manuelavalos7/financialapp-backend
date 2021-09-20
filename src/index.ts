import express from "express";

const app = express()
const port = process.env.NODE_ENV ==="production" ? 8080 : 5000

app.get("/", (req:any, res:any)=>{
    res.send("hello")
})

app.listen(port, ()=>{
    // tslint:disable-next-line:no-console
    console.log(`app listening on port ${port}`)
})
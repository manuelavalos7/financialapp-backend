
import {Client} from "pg";
import {config} from "dotenv";

config();

const client = new Client()
client.connect()

interface Transaction{
    transaction_id: bigint;
    user_id: string;
    date: string;
    timestamp:string;
    new_ticker:string;
    old_ticker:string;
    new_ticker_volume:number;
    old_ticker_volume:number;
    transaction_fee:number;
    memo:string;
}

interface User{
    user_id:string;
    username:string;
    password:string;
    email:string;
    first_name:string;
    last_name:string;
}

interface Ticker{
    ticker_id:string;
    ticker_type:string;
    ticker_api:string;
}


function createEntry(newEntry:Transaction|User|Ticker, table:string){
    return false;
}

function readEntry(id:string, table:string){
    return false;
}

function updateEntry(id:string, updatedEntry:Transaction|User|Ticker, table:string){
    return false;
}

function deleteEntry(id:string, table:string){
    return false;
}

export async function listUsers(){
    const queryResult = await client.query("SELECT * from users")
    // tslint:disable-next-line:no-console
    return queryResult.rows;
}

export{createEntry, readEntry, updateEntry, deleteEntry};
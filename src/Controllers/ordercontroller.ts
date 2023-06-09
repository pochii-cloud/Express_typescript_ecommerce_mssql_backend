import { Request, Response } from 'express';
import { sqlConfig } from "../config";
import mssql from 'mssql'
import { DatabaseHelper } from '../Helpers';



export const placeOrder = async (req: Request, res: Response): Promise<void> => {
  try {
    const { user_id, product_id, quantity, price } = req.body;
    
    const data = {
      'user_id': user_id,
      'product_id': product_id,
      'quantity': quantity,
      'price': price
    };

    await DatabaseHelper.exec('place_order', data);

    res.status(200).json({ message: 'Order placed successfully' });
  } catch (error: any) {
    console.error(error);
    res.status(500).json({ message: error.message });
  }
};



/*

*/





# Module 2 in Mastering Data Analysis Using Microsoft Excel

## Learning Outcomes
[] Apply advanced Excel functions such as VLOOKUP.
[] Illustrate advanced Excel functions such as HLOOKUP.
[] Discuss problem-solving skills by working on data analysis projects from start to finish.
[]Evaluate the powerful tool of Goal Seek.
[] Explain the function of the Data Table.

8. **Duplicate(Highlight)**:Spots duplicates
 - Helps visually identify repeated values within a column or range. 
 - Useful for data cleaning, preventing errors, and ensuring accuracy in records. 
 - Applying conditional formatting with a COUNTIF formula(while using googlesheets), duplicate entries are automatically highlighted, making them easy to spot and manage.

9. **VLOOKUP**
 - Freeze top row for viewing while scrolling from the view tab 
 - Formula Syntax: =VLOOKUP(search_key, range, column_index, [is_sorted])
     Steps:
		1. Select a cell and type =VLOOKUP().
		2. Enter the search key (value to find).
		3. Select the range (table where you are searching).
		4. Specify the column number to return data from.
		5. Use FALSE for an exact match.
 *Example:*
  =VLOOKUP("Apple", A2:C6, 2, FALSE)
  ✅ Finds "Apple" in Column A and returns data from Column B.

  🔹 Tip: Use IFERROR(VLOOKUP(...), "Not Found") to avoid errors.

10. HLOOPUP
  - Formula Syntax: =HLOOKUP(search_key, range, row_index, [is_sorted])
     Steps:
	  1. Select a cell and type =HLOOKUP().
	  2. Enter the search key (value to find).
	  3. Select the range (table where you are searching).
	  4. Specify the row number to return data from.
	  5. Use FALSE for an exact match.
  *Example:*
     =HLOOKUP("Price", A1:D3, 2, FALSE)
     ✅ Finds "Price" in Row 1 and returns data from Row 2.

     🔹 Tip: Use IFERROR(HLOOKUP(...), "Not Found") to avoid errors.

11. GOAL SEEK
 - Goal Seek is a tool in Google Sheets and Excel used to find the input value required to achieve a specific target result in a formula.

   How It Works:
	1. Set up a formula with a dependent cell (the result).
	2. Use Goal Seek to adjust one input cell until the formula reaches the target value.
	3. Google Sheets or Excel automatically calculates the required input.

   *Example:*

	You have a formula: Revenue = Price × Quantity
	If you want the revenue to be 5000, but only Quantity can change, Goal Seek will find the right Quantity for you.

12. Sensitivity Analysis(Data Table)
 - Sensitivity analysis tests how changes in input variables (e.g., % Sold) affect an outcome (e.g., Total Revenue). 
  Steps to Perform Sensitivity Analysis
   1. Set Up the Base Model
   - Create a table with `Books in Store`, `% Sold`, and `Price per Book`.
   - Calculate **Revenue** using:  
     `= Books in Store × % Sold × Price`
   2. Create a Sensitivity Table
   - List different `% Sold` values (e.g., 30%, 40%, 50%, etc.).
   - Use a formula to calculate revenue dynamically:  
     `= 100 * A14 * D$2`
   - Drag the formula down to fill rows.
   3. Use Data Validation (Optional)
   - Add a drop-down list for `% Sold` via Data > Data Validation.
   4. Apply Conditional Formatting (Optional)
   - Highlight revenue ranges with colors under Format > Conditional Formatting.
   5. Visualize with a Chart (Optional)
   - Use a Line Chart or Bar Chart to compare revenue across scenarios.
   ✅ Helps in forecasting and risk assessment.  
   ✅ Shows how different factors impact revenue.  
   ✅ Supports **What-If Analysis** for scenario testing.

13. Average & Median in Excel

 1. AVERAGE (Mean)
   - The sum of all values divided by the total count.
   - Used when data is evenly distributed and has no extreme values.
   - Formula in Excel:
  `=AVERAGE(A1:A10)`
   - Example:**
     Data: 10, 20, 30, 40, 50
     Average: (10 + 20 + 30 + 40 + 50) / 5 = 30

 2. MEDIAN
   - The middle value when data is arranged in order.
   - Used when data has **outliers** or is **skewed**.
  - Formula in Excel:
  `=MEDIAN(A1:A10)`
  
   - Example:
    Data: 10, 20, 100, 120, 150
    Sorted: 10, 20, 100, 120, 150
    Median: 100 (middle value)

14. CountIf
  - Used to **count the number of cells** that meet a specific condition.
  - Useful for counting occurrences of **specific values, text, or conditions**.
 `=COUNTIF(range, criteria)`
   range → The set of cells to check.
   criteria → The condition to apply.
 Examples of COUNTIF
✅ Example 1: Counting a Specific Number
 `=COUNTIF(A1:A10, 50)`
Counts how many times 50 appears in A1:A10.

 *LESSON SUMMARY*
   - HLOOKUP is a function that searches for a value in the first row of a table or range of cells and returns a value in the same column from a specified row.
   - Goal Seek is a feature in Excel that allows you to set a specific value for a cell by adjusting the input values.
   - A Data Table in Excel is a range of cells that shows how changing one or two variables in a formula can affect the results.
   - SUMIF is a function that adds up values in a range based on a specified condition.
   - COUNTIF is a function that counts the number of cells in a range that meet a given condition.
   - The average, also known as the mean, is a measure of central tendency that represents the sum of a set of values divided by the number of values in that set.
   - The median is another measure of central tendency that represents the middle value of a set of numbers when they are arranged in ascending or descending order.
   - It is important to know what to do after analyzing data and communicating your data analysis findings.
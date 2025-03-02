# 1. Total Layoffs Over Time
SELECT `date`, SUM(total_laid_off) AS total_layoffs
FROM layoffs_staging2
GROUP BY `date`
ORDER BY `date`;

# 2. Most Affected Industries
SELECT industry, SUM(total_laid_off) AS total_layoffs
FROM layoffs_staging2
GROUP BY industry
ORDER BY total_layoffs DESC
LIMIT 5;

# 3. Companies with the Highest Layoffs
SELECT company, SUM(total_laid_off) AS total_layoffs
FROM layoffs_staging2
GROUP BY company
ORDER BY total_layoffs DESC
LIMIT 10;


# 4. Layoffs by Country
SELECT country, SUM(total_laid_off) AS total_layoffs
FROM layoffs_staging2
GROUP BY country
ORDER BY total_layoffs DESC
LIMIT 10;


# 5. Layoff Percentage vs. Total Layoffs
SELECT industry, 
       AVG(percentage_laid_off) AS avg_layoff_percentage, 
       SUM(total_laid_off) AS total_layoffs
FROM layoffs_staging2
GROUP BY industry
ORDER BY total_layoffs DESC;


# 6. Layoffs by Funding Stage (for Startups & VC-backed companies)
SELECT stage, SUM(total_laid_off) AS total_layoffs
FROM layoffs_staging2
GROUP BY stage
ORDER BY total_layoffs DESC;

# 7. Layoff Patterns for a Specific Company
SELECT `date`, total_laid_off, percentage_laid_off
FROM layoffs_staging2
WHERE company = 'Airbnb'
ORDER BY `date`;





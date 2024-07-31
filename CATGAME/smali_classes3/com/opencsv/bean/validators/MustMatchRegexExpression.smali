.class public Lcom/opencsv/bean/validators/MustMatchRegexExpression;
.super Ljava/lang/Object;
.source "MustMatchRegexExpression.java"

# interfaces
.implements Lcom/opencsv/bean/validators/StringValidator;


# instance fields
.field private regex:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    return v0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setParameterString(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 57
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    .line 60
    :cond_0
    return-void
.end method

.method public validate(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V
    .locals 5
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "field"    # Lcom/opencsv/bean/BeanField;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/opencsv/exceptions/CsvValidationException;

    invoke-interface {p2}, Lcom/opencsv/bean/BeanField;->getErrorLocale()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "mustMatchRegex"

    invoke-static {v2, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 51
    const-string v2, "validator.regex.mismatch"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 50
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

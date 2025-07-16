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

    const-string v0, ""

    .line 36
    iput-object v0, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isValid(Ljava/lang/String;)Z
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setParameterString(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iput-object p1, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public validate(Ljava/lang/String;Lcom/opencsv/bean/BeanField;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/opencsv/exceptions/CsvValidationException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1}, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->isValid(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    new-instance v0, Lcom/opencsv/exceptions/CsvValidationException;

    const-string v1, "mustMatchRegex"

    invoke-interface {p2}, Lcom/opencsv/bean/BeanField;->getErrorLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "validator.regex.mismatch"

    .line 51
    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p2}, Lcom/opencsv/bean/BeanField;->getField()Ljava/lang/reflect/Field;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 p2, 0x1

    aput-object p1, v2, p2

    const/4 p1, 0x2

    iget-object p2, p0, Lcom/opencsv/bean/validators/MustMatchRegexExpression;->regex:Ljava/lang/String;

    aput-object p2, v2, p1

    .line 50
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/opencsv/exceptions/CsvValidationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

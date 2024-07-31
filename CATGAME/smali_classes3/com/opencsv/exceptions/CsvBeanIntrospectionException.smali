.class public Lcom/opencsv/exceptions/CsvBeanIntrospectionException;
.super Lcom/opencsv/exceptions/CsvRuntimeException;
.source "CsvBeanIntrospectionException.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final transient bean:Ljava/lang/Object;

.field private final transient field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    .line 52
    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .line 72
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    .line 74
    iput-object p2, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 0
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;
    .param p3, "message"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0, p3}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    .line 86
    iput-object p2, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    .line 62
    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    .line 63
    return-void
.end method

.method private getMessageFromLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p1, "locale"    # Ljava/util/Locale;

    .line 106
    invoke-super {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "supermessage":Ljava/lang/String;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getBean()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    const-string v1, "opencsv"

    invoke-static {v1, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    const-string v2, "error.introspecting.field"

    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 109
    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getField()Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    .line 110
    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getBean()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 108
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 112
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBean()Ljava/lang/Object;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    return-object v0
.end method

.method public getField()Ljava/lang/reflect/Field;
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .line 102
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getMessageFromLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 97
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p0, v0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getMessageFromLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

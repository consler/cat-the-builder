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

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    .line 52
    iput-object v0, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    .line 74
    iput-object p2, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/String;)V
    .locals 0

    .line 84
    invoke-direct {p0, p3}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    .line 85
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    .line 86
    iput-object p2, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/opencsv/exceptions/CsvRuntimeException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->bean:Ljava/lang/Object;

    .line 62
    iput-object p1, p0, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->field:Ljava/lang/reflect/Field;

    return-void
.end method

.method private getMessageFromLocale(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .line 106
    invoke-super {p0}, Lcom/opencsv/exceptions/CsvRuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getBean()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v0, "opencsv"

    .line 108
    invoke-static {v0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    const-string v0, "error.introspecting.field"

    invoke-virtual {p1, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 109
    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getField()Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 110
    invoke-virtual {p0}, Lcom/opencsv/exceptions/CsvBeanIntrospectionException;->getBean()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 108
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

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

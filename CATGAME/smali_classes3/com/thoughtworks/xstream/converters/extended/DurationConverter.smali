.class public Lcom/thoughtworks/xstream/converters/extended/DurationConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "DurationConverter.java"


# static fields
.field static synthetic class$javax$xml$datatype$Duration:Ljava/lang/Class;


# instance fields
.field private final factory:Ljavax/xml/datatype/DatatypeFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    new-instance v0, Lcom/thoughtworks/xstream/converters/extended/DurationConverter$1;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/converters/extended/DurationConverter$1;-><init>()V

    .line 44
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/extended/DurationConverter$1;->getFactory()Ljavax/xml/datatype/DatatypeFactory;

    move-result-object v0

    .line 36
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;-><init>(Ljavax/xml/datatype/DatatypeFactory;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljavax/xml/datatype/DatatypeFactory;)V
    .locals 0
    .param p1, "factory"    # Ljavax/xml/datatype/DatatypeFactory;

    .line 47
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;->factory:Ljavax/xml/datatype/DatatypeFactory;

    .line 49
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 52
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;

    .line 52
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;->factory:Ljavax/xml/datatype/DatatypeFactory;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;->class$javax$xml$datatype$Duration:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.xml.datatype.Duration"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;->class$javax$xml$datatype$Duration:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/extended/DurationConverter;->factory:Ljavax/xml/datatype/DatatypeFactory;

    invoke-virtual {v0, p1}, Ljavax/xml/datatype/DatatypeFactory;->newDuration(Ljava/lang/String;)Ljavax/xml/datatype/Duration;

    move-result-object v0

    return-object v0
.end method

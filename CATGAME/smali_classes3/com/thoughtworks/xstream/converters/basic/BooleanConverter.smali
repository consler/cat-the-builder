.class public Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "BooleanConverter.java"


# static fields
.field public static final BINARY:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

.field public static final TRUE_FALSE:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

.field public static final YES_NO:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

.field static synthetic class$java$lang$Boolean:Ljava/lang/Class;


# instance fields
.field private final caseSensitive:Z

.field private final negative:Ljava/lang/String;

.field private final positive:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 24
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    const-string v1, "true"

    const-string v2, "false"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->TRUE_FALSE:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    .line 25
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    const-string v1, "yes"

    const-string v2, "no"

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->YES_NO:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    .line 26
    new-instance v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    const-string v1, "1"

    const-string v2, "0"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->BINARY:Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 39
    const-string v0, "true"

    const-string v1, "false"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "positive"    # Ljava/lang/String;
    .param p2, "negative"    # Ljava/lang/String;
    .param p3, "caseSensitive"    # Z

    .line 32
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->positive:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->negative:Ljava/lang/String;

    .line 35
    iput-boolean p3, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->caseSensitive:Z

    .line 36
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 50
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

    .line 50
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->class$java$lang$Boolean:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Boolean"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->class$java$lang$Boolean:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 54
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->caseSensitive:Z

    if-eqz v0, :cond_1

    .line 55
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->positive:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    return-object v0

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->positive:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_1
    return-object v0
.end method

.method public shouldConvert(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "type"    # Ljava/lang/Class;
    .param p2, "value"    # Ljava/lang/Object;

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 62
    move-object v0, p1

    check-cast v0, Ljava/lang/Boolean;

    .line 63
    .local v0, "value":Ljava/lang/Boolean;
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->positive:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/basic/BooleanConverter;->negative:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

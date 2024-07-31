.class public Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;
.super Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;
.source "LookAndFeelConverter.java"


# static fields
.field static synthetic class$javax$swing$LookAndFeel:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V
    .locals 0
    .param p1, "mapper"    # Lcom/thoughtworks/xstream/mapper/Mapper;
    .param p2, "reflectionProvider"    # Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/reflection/ReflectionConverter;-><init>(Lcom/thoughtworks/xstream/mapper/Mapper;Lcom/thoughtworks/xstream/converters/reflection/ReflectionProvider;)V

    .line 41
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 44
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

    .line 44
    if-eqz p1, :cond_1

    sget-object v0, Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;->class$javax$swing$LookAndFeel:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "javax.swing.LookAndFeel"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;->class$javax$swing$LookAndFeel:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/extended/LookAndFeelConverter;->canAccess(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

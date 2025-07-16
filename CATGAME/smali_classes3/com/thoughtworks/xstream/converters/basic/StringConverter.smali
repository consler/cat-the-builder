.class public Lcom/thoughtworks/xstream/converters/basic/StringConverter;
.super Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;
.source "StringConverter.java"


# static fields
.field private static final LENGTH_LIMIT:I = 0x26

.field static synthetic class$java$lang$String:Ljava/lang/Class;


# instance fields
.field private final cache:Ljava/util/Map;

.field private final lengthLimit:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x26

    .line 80
    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/converters/basic/StringConverter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 73
    new-instance v0, Lcom/thoughtworks/xstream/core/util/WeakCache;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/WeakCache;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/converters/basic/StringConverter;-><init>(Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/16 v0, 0x26

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/basic/StringConverter;-><init>(Ljava/util/Map;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;I)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/basic/AbstractSingleValueConverter;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->cache:Ljava/util/Map;

    .line 54
    iput p2, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->lengthLimit:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 84
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public canConvert(Ljava/lang/Class;)Z
    .locals 1

    .line 84
    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->class$java$lang$String:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->class$java$lang$String:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->cache:Ljava/util/Map;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->lengthLimit:I

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->lengthLimit:I

    if-gt v0, v1, :cond_2

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->cache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/basic/StringConverter;->cache:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_0
    return-object p1
.end method

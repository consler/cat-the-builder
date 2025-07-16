.class public Lcom/thoughtworks/xstream/converters/basic/CharConverter;
.super Ljava/lang/Object;
.source "CharConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;
.implements Lcom/thoughtworks/xstream/converters/SingleValueConverter;


# static fields
.field static synthetic class$java$lang$Character:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 31
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

    .line 31
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/thoughtworks/xstream/converters/basic/CharConverter;->class$java$lang$Character:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.lang.Character"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/basic/CharConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/basic/CharConverter;->class$java$lang$Character:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public fromString(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    new-instance p1, Ljava/lang/Character;

    invoke-direct {p1, v1}, Ljava/lang/Character;-><init>(C)V

    return-object p1

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/Character;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {v0, p1}, Ljava/lang/Character;-><init>(C)V

    return-object v0
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/basic/CharConverter;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 56
    move-object v0, p1

    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 57
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 1

    const-string p2, "null"

    .line 39
    invoke-interface {p1, p2}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    const-string v0, "true"

    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 41
    new-instance p1, Ljava/lang/Character;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/Character;-><init>(C)V

    return-object p1

    .line 43
    :cond_0
    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/converters/basic/CharConverter;->fromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

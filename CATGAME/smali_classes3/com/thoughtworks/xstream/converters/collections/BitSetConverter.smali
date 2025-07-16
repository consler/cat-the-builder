.class public Lcom/thoughtworks/xstream/converters/collections/BitSetConverter;
.super Ljava/lang/Object;
.source "BitSetConverter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/Converter;


# static fields
.field static synthetic class$java$util$BitSet:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 32
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

    .line 32
    sget-object v0, Lcom/thoughtworks/xstream/converters/collections/BitSetConverter;->class$java$util$BitSet:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "java.util.BitSet"

    invoke-static {v0}, Lcom/thoughtworks/xstream/converters/collections/BitSetConverter;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/converters/collections/BitSetConverter;->class$java$util$BitSet:Ljava/lang/Class;

    :cond_0
    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public marshal(Ljava/lang/Object;Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;Lcom/thoughtworks/xstream/converters/MarshallingContext;)V
    .locals 3

    .line 36
    check-cast p1, Ljava/util/BitSet;

    .line 37
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 39
    :goto_0
    invoke-virtual {p1}, Ljava/util/BitSet;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    const/16 v2, 0x2c

    .line 42
    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    .line 46
    :goto_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamWriter;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public unmarshal(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;Lcom/thoughtworks/xstream/converters/UnmarshallingContext;)Ljava/lang/Object;
    .locals 3

    .line 53
    new-instance p2, Ljava/util/BitSet;

    invoke-direct {p2}, Ljava/util/BitSet;-><init>()V

    .line 54
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-interface {p1}, Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v1, ","

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 55
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 57
    invoke-virtual {p2, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_0

    :cond_0
    return-object p2
.end method

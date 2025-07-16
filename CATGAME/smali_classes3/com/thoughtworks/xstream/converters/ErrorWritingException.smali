.class public abstract Lcom/thoughtworks/xstream/converters/ErrorWritingException;
.super Lcom/thoughtworks/xstream/XStreamException;
.source "ErrorWritingException.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/ErrorWriter;


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "\n-------------------------------"


# instance fields
.field private final stuff:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 41
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/XStreamException;-><init>(Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->addData(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/XStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->addData(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/XStreamException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    new-instance v0, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/core/util/OrderRetainingMap;-><init>()V

    iput-object v0, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->addData(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private addData(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "message"

    .line 70
    invoke-virtual {p0, v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_2

    .line 73
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cause-exception"

    invoke-virtual {p0, v0, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    instance-of p1, p2, Lcom/thoughtworks/xstream/converters/ErrorWritingException;

    if-eqz p1, :cond_1

    check-cast p2, Lcom/thoughtworks/xstream/converters/ErrorWritingException;

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->getShortMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "cause-message"

    invoke-virtual {p0, p2, p1}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    move-object v1, p1

    .line 85
    :goto_0
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 86
    iget-object v2, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 91
    :cond_1
    iget-object p1, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMessage()Ljava/lang/String;
    .locals 6

    .line 111
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 112
    invoke-super {p0}, Lcom/thoughtworks/xstream/XStreamException;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 113
    invoke-super {p0}, Lcom/thoughtworks/xstream/XStreamException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n-------------------------------"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "\n---- Debugging information ----"

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 120
    invoke-virtual {p0, v3}, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0xa

    .line 121
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x14

    .line 122
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    const-string v5, "                    "

    invoke-virtual {v5, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ": "

    .line 123
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 126
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShortMessage()Ljava/lang/String;
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/thoughtworks/xstream/XStreamException;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public keys()Ljava/util/Iterator;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    move-object v0, p1

    .line 98
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 100
    iget-object v1, p0, Lcom/thoughtworks/xstream/converters/ErrorWritingException;->stuff:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-void
.end method

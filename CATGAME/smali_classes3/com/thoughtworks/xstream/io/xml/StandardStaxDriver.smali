.class public Lcom/thoughtworks/xstream/io/xml/StandardStaxDriver;
.super Lcom/thoughtworks/xstream/io/xml/StaxDriver;
.source "StandardStaxDriver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>()V

    .line 39
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 70
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;

    .line 56
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0
    .param p1, "qnameMap"    # Lcom/thoughtworks/xstream/io/xml/QNameMap;
    .param p2, "nameCoder"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/xml/QNameMap;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;)V
    .locals 0
    .param p1, "nameCoder"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    .line 63
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/StaxDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 64
    return-void
.end method


# virtual methods
.method protected createInputFactory()Ljavax/xml/stream/XMLInputFactory;
    .locals 5

    .line 74
    const/4 v0, 0x0

    .line 76
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxInputFactory()Ljava/lang/Class;

    move-result-object v1

    .line 77
    .local v1, "staxInputFactory":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 78
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/XMLInputFactory;

    .line 79
    .local v2, "instance":Ljavax/xml/stream/XMLInputFactory;
    const-string v3, "javax.xml.stream.isSupportingExternalEntities"

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljavax/xml/stream/XMLInputFactory;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    return-object v2

    .line 82
    .end local v2    # "instance":Ljavax/xml/stream/XMLInputFactory;
    :cond_0
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v3, "Java runtime has no standard XMLInputFactory implementation."

    invoke-direct {v2, v3, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "exception":Ljava/lang/Exception;
    throw v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v1    # "staxInputFactory":Ljava/lang/Class;
    .restart local v0    # "exception":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v0, v1

    goto :goto_1

    .line 86
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v0, v1

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 84
    :catch_2
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/InstantiationException;
    move-object v0, v1

    .line 90
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :goto_0
    nop

    .line 91
    :goto_1
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Cannot create standard XMLInputFactory instance of Java runtime."

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createOutputFactory()Ljavax/xml/stream/XMLOutputFactory;
    .locals 4

    .line 95
    const/4 v0, 0x0

    .line 97
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_0
    invoke-static {}, Lcom/thoughtworks/xstream/core/JVM;->getStaxOutputFactory()Ljava/lang/Class;

    move-result-object v1

    .line 98
    .local v1, "staxOutputFactory":Ljava/lang/Class;
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/xml/stream/XMLOutputFactory;

    return-object v2

    .line 101
    :cond_0
    new-instance v2, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v3, "Java runtime has no standard XMLOutputFactory implementation."

    invoke-direct {v2, v3, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "exception":Ljava/lang/Exception;
    throw v2
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    .end local v1    # "staxOutputFactory":Ljava/lang/Class;
    .restart local v0    # "exception":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v0, v1

    goto :goto_1

    .line 105
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 106
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v0, v1

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 103
    :catch_2
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/InstantiationException;
    move-object v0, v1

    .line 109
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :goto_0
    nop

    .line 110
    :goto_1
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Cannot create standard XMLOutputFactory instance of Java runtime."

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

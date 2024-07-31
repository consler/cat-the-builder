.class public Lcom/thoughtworks/xstream/io/xml/XppReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;
.source "XppReader.java"


# static fields
.field static synthetic class$org$xmlpull$v1$XmlPullParser:Ljava/lang/Class;


# instance fields
.field private final parser:Lorg/xmlpull/v1/XmlPullParser;

.field private final reader:Ljava/io/Reader;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .line 70
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/thoughtworks/xstream/io/xml/XppReader;-><init>(Ljava/io/Reader;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "replacer"    # Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;

    .line 78
    invoke-direct {p0, p2}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;-><init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V

    .line 80
    :try_start_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XppReader;->createParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 81
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->reader:Ljava/io/Reader;

    .line 82
    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 83
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XppReader;->moveDown()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    nop

    .line 87
    return-void

    .line 84
    :catch_0
    move-exception v0

    .line 85
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;

    .line 43
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/thoughtworks/xstream/io/xml/XppReader;-><init>(Ljava/io/Reader;Lorg/xmlpull/v1/XmlPullParser;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;Lorg/xmlpull/v1/XmlPullParser;Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;
    .param p2, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p3, "nameCoder"    # Lcom/thoughtworks/xstream/io/naming/NameCoder;

    .line 55
    invoke-direct {p0, p3}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 56
    iput-object p2, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    .line 57
    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->reader:Ljava/io/Reader;

    .line 59
    :try_start_0
    invoke-interface {p2, p1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    nop

    .line 63
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/XppReader;->moveDown()V

    .line 64
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "x0"    # Ljava/lang/String;

    .line 96
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
.method public appendErrors(Lcom/thoughtworks/xstream/converters/ErrorWriter;)V
    .locals 2
    .param p1, "errorWriter"    # Lcom/thoughtworks/xstream/converters/ErrorWriter;

    .line 155
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "line number"

    invoke-interface {p1, v1, v0}, Lcom/thoughtworks/xstream/converters/ErrorWriter;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public close()V
    .locals 2

    .line 160
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    nop

    .line 164
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 4

    .line 94
    const/4 v0, 0x0

    .line 96
    .local v0, "exception":Ljava/lang/Exception;
    :try_start_0
    const-string v1, "org.xmlpull.mxp1.MXParser"

    const/4 v2, 0x1

    sget-object v3, Lcom/thoughtworks/xstream/io/xml/XppReader;->class$org$xmlpull$v1$XmlPullParser:Ljava/lang/Class;

    if-nez v3, :cond_0

    const-string v3, "org.xmlpull.v1.XmlPullParser"

    invoke-static {v3}, Lcom/thoughtworks/xstream/io/xml/XppReader;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Lcom/thoughtworks/xstream/io/xml/XppReader;->class$org$xmlpull$v1$XmlPullParser:Ljava/lang/Class;

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/thoughtworks/xstream/io/xml/XppReader;->class$org$xmlpull$v1$XmlPullParser:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v1, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v0, v1

    goto :goto_2

    .line 99
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 100
    .local v1, "e":Ljava/lang/IllegalAccessException;
    move-object v0, v1

    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    goto :goto_1

    .line 97
    :catch_2
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/InstantiationException;
    move-object v0, v1

    .line 103
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :goto_1
    nop

    .line 104
    :goto_2
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    const-string v2, "Cannot create Xpp3 parser instance."

    invoke-direct {v1, v2, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getAttribute(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 143
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-virtual {p0, p1}, Lcom/thoughtworks/xstream/io/xml/XppReader;->encodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttributeCount()I
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 151
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0, p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/XppReader;->decodeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected pullElementName()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected pullNextEvent()I
    .locals 3

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_2

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    .line 121
    const/4 v0, 0x0

    return v0

    .line 119
    :cond_0
    return v2

    .line 117
    :cond_1
    return v1

    .line 115
    :cond_2
    return v2

    .line 112
    :cond_3
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 123
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 124
    .local v0, "e":Lorg/xmlpull/v1/XmlPullParserException;
    new-instance v1, Lcom/thoughtworks/xstream/io/StreamException;

    invoke-direct {v1, v0}, Lcom/thoughtworks/xstream/io/StreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected pullText()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/XppReader;->parser:Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

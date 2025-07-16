.class public abstract Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;
.source "AbstractPullReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    }
.end annotation


# static fields
.field protected static final COMMENT:I = 0x4

.field protected static final END_NODE:I = 0x2

.field protected static final OTHER:I = 0x0

.field protected static final START_NODE:I = 0x1

.field protected static final TEXT:I = 0x3


# instance fields
.field private final elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private final lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

.field private marked:Z

.field private final pool:Lcom/thoughtworks/xstream/core/util/FastStack;


# direct methods
.method protected constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXmlReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    .line 35
    new-instance p1, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/16 v0, 0x10

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 36
    new-instance p1, Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 38
    new-instance p1, Lcom/thoughtworks/xstream/core/util/FastStack;

    const/4 v0, 0x4

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    .line 39
    new-instance p1, Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {p1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;-><init>(I)V

    iput-object p1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    return-void
.end method

.method protected constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method private move()V
    .locals 2

    .line 118
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1, v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget v0, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullElementName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    .locals 2

    .line 131
    iget-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->marked:Z

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    return-object v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readRealEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    return-object v0

    .line 138
    :cond_1
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    return-object v0

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readRealEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    return-object v0
.end method

.method private readRealEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pool:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;-><init>(Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$1;)V

    .line 148
    :goto_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullNextEvent()I

    move-result v2

    iput v2, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    .line 149
    iget v2, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 150
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    goto :goto_1

    .line 151
    :cond_1
    iget v2, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 152
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->pullElementName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    goto :goto_1

    .line 154
    :cond_2
    iput-object v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    :goto_1
    return-object v0
.end method


# virtual methods
.method public getAttributeNames()Ljava/util/Iterator;
    .locals 1

    .line 208
    new-instance v0, Lcom/thoughtworks/xstream/io/AttributeNameIterator;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/io/AttributeNameIterator;-><init>(Lcom/thoughtworks/xstream/io/HierarchicalStreamReader;)V

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->unescapeXmlName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .line 179
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->mark()V

    .line 180
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 182
    :goto_0
    iget v3, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 183
    iget-object v0, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 184
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    if-nez v2, :cond_0

    move-object v2, v0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    .line 189
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 191
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 194
    :cond_2
    iget v0, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v3, 0x4

    if-eq v0, v3, :cond_5

    .line 199
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    if-eqz v1, :cond_3

    .line 201
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_3
    if-nez v2, :cond_4

    const-string v2, ""

    :cond_4
    return-object v2

    .line 197
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    goto :goto_0
.end method

.method public hasMoreChildren()Z
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->mark()V

    .line 87
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    iget v0, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    const/4 v0, 0x0

    return v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    return v1
.end method

.method public mark()V
    .locals 1

    const/4 v0, 0x1

    .line 160
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->marked:Z

    return-void
.end method

.method public moveDown()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    .line 102
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-gt v1, v0, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->move()V

    .line 104
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    return-void
.end method

.method public moveUp()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v0

    .line 112
    :goto_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->elementStack:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->move()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public peekNextChild()Ljava/lang/String;
    .locals 3

    .line 216
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->mark()V

    .line 218
    :goto_0
    invoke-direct {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->readEvent()Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;

    move-result-object v0

    .line 219
    iget v1, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    const/4 v0, 0x0

    return-object v0

    .line 221
    :cond_1
    invoke-virtual {p0}, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->reset()V

    .line 222
    iget-object v0, v0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader$Event;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected abstract pullElementName()Ljava/lang/String;
.end method

.method protected abstract pullNextEvent()I
.end method

.method protected abstract pullText()Ljava/lang/String;
.end method

.method public reset()V
    .locals 2

    .line 164
    :goto_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v0}, Lcom/thoughtworks/xstream/core/util/FastStack;->hasStuff()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookback:Lcom/thoughtworks/xstream/core/util/FastStack;

    iget-object v1, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->lookahead:Lcom/thoughtworks/xstream/core/util/FastStack;

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->pop()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/thoughtworks/xstream/core/util/FastStack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/thoughtworks/xstream/io/xml/AbstractPullReader;->marked:Z

    return-void
.end method

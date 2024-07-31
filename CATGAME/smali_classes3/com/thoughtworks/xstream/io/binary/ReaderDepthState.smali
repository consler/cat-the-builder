.class Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;
.super Ljava/lang/Object;
.source "ReaderDepthState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;,
        Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;
    }
.end annotation


# static fields
.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 81
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;-><init>(Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$1;)V

    .line 82
    .local v0, "attribute":Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;
    iput-object p1, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;->name:Ljava/lang/String;

    .line 83
    iput-object p2, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;->value:Ljava/lang/String;

    .line 84
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v1, v1, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    if-nez v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v1, v1, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public getAttribute(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 106
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 107
    const/4 v0, 0x0

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;

    .line 110
    .local v0, "attribute":Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;
    iget-object v1, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;->value:Ljava/lang/String;

    return-object v1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 91
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 92
    return-object v1

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 96
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;

    .line 97
    .local v2, "attribute":Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;
    iget-object v3, v2, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 98
    iget-object v1, v2, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;->value:Ljava/lang/String;

    return-object v1

    .line 100
    .end local v2    # "attribute":Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;
    :cond_1
    goto :goto_0

    .line 101
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_2
    return-object v1
.end method

.method public getAttributeCount()I
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getAttributeName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 115
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 116
    const/4 v0, 0x0

    return-object v0

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;

    .line 119
    .local v0, "attribute":Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;
    iget-object v1, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$Attribute;->name:Ljava/lang/String;

    return-object v1
.end method

.method public getAttributeNames()Ljava/util/Iterator;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    if-nez v0, :cond_0

    .line 129
    sget-object v0, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 132
    .local v0, "attributeIterator":Ljava/util/Iterator;
    new-instance v1, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$1;

    invoke-direct {v1, p0, v0}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$1;-><init>(Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->value:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public hasMoreChildren()Z
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-boolean v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->hasMoreChildren:Z

    return v0
.end method

.method public pop()V
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iget-object v0, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->parent:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    .line 54
    return-void
.end method

.method public push()V
    .locals 2

    .line 47
    new-instance v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;-><init>(Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$1;)V

    .line 48
    .local v0, "newState":Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;
    iget-object v1, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iput-object v1, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->parent:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    .line 49
    iput-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    .line 50
    return-void
.end method

.method public setHasMoreChildren(Z)V
    .locals 1
    .param p1, "hasMoreChildren"    # Z

    .line 77
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iput-boolean p1, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->hasMoreChildren:Z

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 61
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iput-object p1, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->name:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 69
    iget-object v0, p0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState;->current:Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;

    iput-object p1, v0, Lcom/thoughtworks/xstream/io/binary/ReaderDepthState$State;->value:Ljava/lang/String;

    .line 70
    return-void
.end method

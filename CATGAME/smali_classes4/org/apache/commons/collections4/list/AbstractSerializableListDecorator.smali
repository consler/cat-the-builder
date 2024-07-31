.class public abstract Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;
.super Lorg/apache/commons/collections4/list/AbstractListDecorator;
.source "AbstractSerializableListDecorator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractListDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x2542e429f68d7b6bL


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TE;>;)V"
        }
    .end annotation

    .line 43
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;, "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<TE;>;"
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractListDecorator;-><init>(Ljava/util/List;)V

    .line 44
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 67
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;, "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 68
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->setCollection(Ljava/util/Collection;)V

    .line 69
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    .local p0, "this":Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;, "Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 55
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/AbstractSerializableListDecorator;->decorated()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 56
    return-void
.end method

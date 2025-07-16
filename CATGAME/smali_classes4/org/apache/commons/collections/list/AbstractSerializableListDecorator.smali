.class public abstract Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;
.super Lorg/apache/commons/collections/list/AbstractListDecorator;
.source "AbstractSerializableListDecorator.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x2542e429f68d7b6bL


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/list/AbstractListDecorator;-><init>(Ljava/util/List;)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 66
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 67
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    iput-object p1, p0, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->collection:Ljava/util/Collection;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 55
    iget-object v0, p0, Lorg/apache/commons/collections/list/AbstractSerializableListDecorator;->collection:Ljava/util/Collection;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    return-void
.end method

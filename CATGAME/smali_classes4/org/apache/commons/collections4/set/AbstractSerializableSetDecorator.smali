.class public abstract Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;
.super Lorg/apache/commons/collections4/set/AbstractSetDecorator;
.source "AbstractSerializableSetDecorator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractSetDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x110ff46b96170e1bL


# direct methods
.method protected constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSetDecorator;-><init>(Ljava/util/Set;)V

    .line 45
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

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 69
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-virtual {p0, v0}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;->setCollection(Ljava/util/Collection;)V

    .line 70
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

    .line 55
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 56
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractSerializableSetDecorator;->decorated()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 57
    return-void
.end method

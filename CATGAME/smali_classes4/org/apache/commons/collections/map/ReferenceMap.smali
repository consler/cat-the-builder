.class public Lorg/apache/commons/collections/map/ReferenceMap;
.super Lorg/apache/commons/collections/map/AbstractReferenceMap;
.source "ReferenceMap.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1594ca03984908d7L


# direct methods
.method public constructor <init>()V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    .line 86
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 6

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    .line 99
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    return-void
.end method

.method public constructor <init>(IIIF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 130
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    return-void
.end method

.method public constructor <init>(IIIFZ)V
    .locals 0

    .line 149
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 6

    const/16 v3, 0x10

    const/high16 v4, 0x3f400000    # 0.75f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p3

    .line 114
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/collections/map/AbstractReferenceMap;-><init>(IIIFZ)V

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

    .line 165
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 166
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/ReferenceMap;->doReadObject(Ljava/io/ObjectInputStream;)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 158
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections/map/ReferenceMap;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    return-void
.end method

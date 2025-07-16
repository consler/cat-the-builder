.class final Lorg/apache/commons/collections/map/UnmodifiableEntrySet$UnmodifiableEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;
.source "UnmodifiableEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/UnmodifiableEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "UnmodifiableEntry"
.end annotation


# direct methods
.method protected constructor <init>(Ljava/util/Map$Entry;)V
    .locals 0

    .line 155
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;-><init>(Ljava/util/Map$Entry;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 159
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.class Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;
.super Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;
.source "AbstractInputCheckedMapDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MapEntry"
.end annotation


# instance fields
.field private final parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;


# direct methods
.method protected constructor <init>(Ljava/util/Map$Entry;Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;)V
    .locals 0

    .line 187
    invoke-direct {p0, p1}, Lorg/apache/commons/collections/keyvalue/AbstractMapEntryDecorator;-><init>(Ljava/util/Map$Entry;)V

    .line 188
    iput-object p2, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 192
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;->parent:Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;

    invoke-virtual {v0, p1}, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator;->checkSetValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 193
    iget-object v0, p0, Lorg/apache/commons/collections/map/AbstractInputCheckedMapDecorator$MapEntry;->entry:Ljava/util/Map$Entry;

    invoke-interface {v0, p1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

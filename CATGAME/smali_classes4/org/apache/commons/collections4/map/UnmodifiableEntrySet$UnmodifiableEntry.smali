.class Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;
.super Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;
.source "UnmodifiableEntrySet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnmodifiableEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;Ljava/util/Map$Entry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>.UnmodifiableEntry;"
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    iput-object p1, p0, Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;->this$0:Lorg/apache/commons/collections4/map/UnmodifiableEntrySet;

    .line 186
    invoke-direct {p0, p2}, Lorg/apache/commons/collections4/keyvalue/AbstractMapEntryDecorator;-><init>(Ljava/util/Map$Entry;)V

    .line 187
    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lorg/apache/commons/collections4/map/UnmodifiableEntrySet$UnmodifiableEntry;, "Lorg/apache/commons/collections4/map/UnmodifiableEntrySet<TK;TV;>.UnmodifiableEntry;"
    .local p1, "obj":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

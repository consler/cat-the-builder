.class final Lcom/google/common/collect/ImmutableEnumSet;
.super Lcom/google/common/collect/ImmutableSet;
.source "ImmutableEnumSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Enum<",
        "TE;>;>",
        "Lcom/google/common/collect/ImmutableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient delegate:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation
.end field

.field private transient hashCode:I
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/EnumSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 55
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    .local p1, "delegate":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    .line 57
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/EnumSet;Lcom/google/common/collect/ImmutableEnumSet$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/EnumSet;
    .param p2, "x1"    # Lcom/google/common/collect/ImmutableEnumSet$1;

    .line 32
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    invoke-direct {p0, p1}, Lcom/google/common/collect/ImmutableEnumSet;-><init>(Ljava/util/EnumSet;)V

    return-void
.end method

.method static asImmutable(Ljava/util/EnumSet;)Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .param p0, "set"    # Ljava/util/EnumSet;

    .line 35
    invoke-virtual {p0}, Ljava/util/EnumSet;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 41
    new-instance v0, Lcom/google/common/collect/ImmutableEnumSet;

    invoke-direct {v0, p0}, Lcom/google/common/collect/ImmutableEnumSet;-><init>(Ljava/util/EnumSet;)V

    return-object v0

    .line 39
    :cond_0
    invoke-static {p0}, Lcom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 37
    :cond_1
    invoke-static {}, Lcom/google/common/collect/ImmutableSet;->of()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 76
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 81
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    instance-of v0, p1, Lcom/google/common/collect/ImmutableEnumSet;

    if-eqz v0, :cond_0

    .line 82
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableEnumSet;

    iget-object p1, v0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 94
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    if-ne p1, p0, :cond_0

    .line 95
    const/4 v0, 0x1

    return v0

    .line 97
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/ImmutableEnumSet;

    if-eqz v0, :cond_1

    .line 98
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/ImmutableEnumSet;

    iget-object p1, v0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0, p1}, Ljava/util/EnumSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 112
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    iget v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->hashCode:I

    .line 113
    .local v0, "result":I
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->hashCode()I

    move-result v1

    iput v1, p0, Lcom/google/common/collect/ImmutableEnumSet;->hashCode:I

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    return v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 89
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 105
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    const/4 v0, 0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 61
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 30
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableEnumSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 71
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 118
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-virtual {v0}, Ljava/util/EnumSet;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 124
    .local p0, "this":Lcom/google/common/collect/ImmutableEnumSet;, "Lcom/google/common/collect/ImmutableEnumSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableEnumSet;->delegate:Ljava/util/EnumSet;

    invoke-direct {v0, v1}, Lcom/google/common/collect/ImmutableEnumSet$EnumSerializedForm;-><init>(Ljava/util/EnumSet;)V

    return-object v0
.end method

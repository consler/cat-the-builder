.class Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;
.super Ljava/lang/Object;
.source "FuzzyMappingStrategy.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/opencsv/bean/FuzzyMappingStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FuzzyComparison"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;",
        ">;"
    }
.end annotation


# instance fields
.field final distance:Ljava/lang/Integer;

.field final field:Ljava/lang/reflect/Field;

.field final header:Ljava/lang/String;

.field final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .param p1, "distance"    # Ljava/lang/Integer;
    .param p2, "header"    # Ljava/lang/String;
    .param p4, "field"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 96
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->distance:Ljava/lang/Integer;

    .line 98
    iput-object p2, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->header:Ljava/lang/String;

    .line 99
    iput-object p3, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->type:Ljava/lang/Class;

    .line 100
    iput-object p4, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->field:Ljava/lang/reflect/Field;

    .line 101
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;)I
    .locals 2
    .param p1, "o"    # Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    .line 105
    iget-object v0, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->distance:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p1, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->distance:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 89
    check-cast p1, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    invoke-virtual {p0, p1}, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->compareTo(Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 110
    if-ne p0, p1, :cond_0

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_0
    instance-of v0, p1, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    if-nez v0, :cond_1

    .line 114
    const/4 v0, 0x0

    return v0

    .line 116
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;

    .line 117
    .local v0, "that":Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;
    iget-object v1, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->distance:Ljava/lang/Integer;

    iget-object v2, v0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->distance:Ljava/lang/Integer;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 122
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/opencsv/bean/FuzzyMappingStrategy$FuzzyComparison;->distance:Ljava/lang/Integer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

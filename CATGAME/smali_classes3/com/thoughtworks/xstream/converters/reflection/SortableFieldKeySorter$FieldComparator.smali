.class Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;
.super Ljava/lang/Object;
.source "SortableFieldKeySorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FieldComparator"
.end annotation


# instance fields
.field private final fieldOrder:[Ljava/lang/String;

.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;

.field private final type:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;Ljava/lang/Class;[Ljava/lang/String;)V
    .locals 0
    .param p2, "type"    # Ljava/lang/Class;
    .param p3, "fields"    # [Ljava/lang/String;

    .line 66
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->this$0:Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p2, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->type:Ljava/lang/Class;

    .line 68
    iput-object p3, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->fieldOrder:[Ljava/lang/String;

    .line 69
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "firstObject"    # Ljava/lang/Object;
    .param p2, "secondObject"    # Ljava/lang/Object;

    .line 92
    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .local v0, "first":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    move-object v1, p2

    check-cast v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 93
    .local v1, "second":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getFieldName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "first"    # Ljava/lang/String;
    .param p2, "second"    # Ljava/lang/String;

    .line 72
    const/4 v0, -0x1

    .local v0, "firstPosition":I
    const/4 v1, -0x1

    .line 73
    .local v1, "secondPosition":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->fieldOrder:[Ljava/lang/String;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 74
    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    move v0, v2

    .line 77
    :cond_0
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->fieldOrder:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 78
    move v1, v2

    .line 73
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 81
    .end local v2    # "i":I
    :cond_2
    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    if-eq v1, v2, :cond_3

    .line 88
    sub-int v2, v0, v1

    return v2

    .line 83
    :cond_3
    new-instance v2, Lcom/thoughtworks/xstream/converters/ConversionException;

    const-string v3, "Incomplete list of serialized fields for type"

    invoke-direct {v2, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "exception":Lcom/thoughtworks/xstream/converters/ConversionException;
    iget-object v3, p0, Lcom/thoughtworks/xstream/converters/reflection/SortableFieldKeySorter$FieldComparator;->type:Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "sort-type"

    invoke-virtual {v2, v4, v3}, Lcom/thoughtworks/xstream/converters/ConversionException;->add(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    throw v2
.end method

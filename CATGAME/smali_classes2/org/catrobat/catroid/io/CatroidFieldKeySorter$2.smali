.class Lorg/catrobat/catroid/io/CatroidFieldKeySorter$2;
.super Ljava/lang/Object;
.source "CatroidFieldKeySorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->sortAlphabeticallyByClassHierarchy(Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/io/CatroidFieldKeySorter;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/CatroidFieldKeySorter;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/io/CatroidFieldKeySorter;

    .line 105
    iput-object p1, p0, Lorg/catrobat/catroid/io/CatroidFieldKeySorter$2;->this$0:Lorg/catrobat/catroid/io/CatroidFieldKeySorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "objectOne"    # Ljava/lang/Object;
    .param p2, "objectTwo"    # Ljava/lang/Object;

    .line 108
    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 109
    .local v0, "fieldKeyOne":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    move-object v1, p2

    check-cast v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 110
    .local v1, "fieldKeyTwo":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v2

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 111
    .local v2, "fieldKeyComparator":I
    if-nez v2, :cond_0

    .line 112
    invoke-static {v0}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->getAliasOrFieldName(Lcom/thoughtworks/xstream/converters/reflection/FieldKey;)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, "fieldNameOrAlias1":Ljava/lang/String;
    invoke-static {v1}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->getAliasOrFieldName(Lcom/thoughtworks/xstream/converters/reflection/FieldKey;)Ljava/lang/String;

    move-result-object v4

    .line 114
    .local v4, "fieldNameOrAlias2":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    .line 116
    .end local v3    # "fieldNameOrAlias1":Ljava/lang/String;
    .end local v4    # "fieldNameOrAlias2":Ljava/lang/String;
    :cond_0
    return v2
.end method

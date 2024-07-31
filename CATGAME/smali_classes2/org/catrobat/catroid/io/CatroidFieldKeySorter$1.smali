.class Lorg/catrobat/catroid/io/CatroidFieldKeySorter$1;
.super Ljava/lang/Object;
.source "CatroidFieldKeySorter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->sortByList(Ljava/util/List;Ljava/util/Map;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/catrobat/catroid/io/CatroidFieldKeySorter;

.field final synthetic val$fieldOrder:Ljava/util/List;


# direct methods
.method constructor <init>(Lorg/catrobat/catroid/io/CatroidFieldKeySorter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lorg/catrobat/catroid/io/CatroidFieldKeySorter;

    .line 71
    iput-object p1, p0, Lorg/catrobat/catroid/io/CatroidFieldKeySorter$1;->this$0:Lorg/catrobat/catroid/io/CatroidFieldKeySorter;

    iput-object p2, p0, Lorg/catrobat/catroid/io/CatroidFieldKeySorter$1;->val$fieldOrder:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "objectOne"    # Ljava/lang/Object;
    .param p2, "objectTwo"    # Ljava/lang/Object;

    .line 75
    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 76
    .local v0, "fieldKeyOne":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    move-object v1, p2

    check-cast v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 78
    .local v1, "fieldKeyTwo":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    iget-object v2, p0, Lorg/catrobat/catroid/io/CatroidFieldKeySorter$1;->val$fieldOrder:Ljava/util/List;

    invoke-static {v0}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->getAliasOrFieldName(Lcom/thoughtworks/xstream/converters/reflection/FieldKey;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 79
    .local v2, "fieldKeyOneIndex":I
    iget-object v3, p0, Lorg/catrobat/catroid/io/CatroidFieldKeySorter$1;->val$fieldOrder:Ljava/util/List;

    invoke-static {v1}, Lorg/catrobat/catroid/io/CatroidFieldKeySorter;->getAliasOrFieldName(Lcom/thoughtworks/xstream/converters/reflection/FieldKey;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 80
    .local v3, "fieldKeyTwoIndex":I
    sub-int v4, v2, v3

    return v4
.end method

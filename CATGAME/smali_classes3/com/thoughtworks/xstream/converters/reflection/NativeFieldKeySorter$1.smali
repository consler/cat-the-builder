.class Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter$1;
.super Ljava/lang/Object;
.source "NativeFieldKeySorter.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final synthetic this$0:Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter;


# direct methods
.method constructor <init>(Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter;

    .line 28
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 5
    .param p1, "o1"    # Ljava/lang/Object;
    .param p2, "o2"    # Ljava/lang/Object;

    .line 31
    move-object v0, p1

    check-cast v0, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 32
    .local v0, "fieldKey1":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    move-object v1, p2

    check-cast v1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 33
    .local v1, "fieldKey2":Lcom/thoughtworks/xstream/converters/reflection/FieldKey;
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v2

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v3

    sub-int/2addr v2, v3

    .line 34
    .local v2, "i":I
    if-nez v2, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getOrder()I

    move-result v3

    invoke-virtual {v1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getOrder()I

    move-result v4

    sub-int v2, v3, v4

    .line 37
    :cond_0
    return v2
.end method

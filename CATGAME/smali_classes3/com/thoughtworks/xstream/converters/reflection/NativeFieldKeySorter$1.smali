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

    .line 28
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter$1;->this$0:Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    .line 31
    check-cast p1, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 32
    check-cast p2, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;

    .line 33
    invoke-virtual {p1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v0

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getDepth()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 35
    invoke-virtual {p1}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getOrder()I

    move-result p1

    invoke-virtual {p2}, Lcom/thoughtworks/xstream/converters/reflection/FieldKey;->getOrder()I

    move-result p2

    sub-int v0, p1, p2

    :cond_0
    return v0
.end method

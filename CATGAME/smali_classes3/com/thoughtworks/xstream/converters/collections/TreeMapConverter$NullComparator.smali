.class final Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$NullComparator;
.super Lcom/thoughtworks/xstream/mapper/Mapper$Null;
.source "TreeMapConverter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NullComparator"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/thoughtworks/xstream/mapper/Mapper$Null;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$1;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/thoughtworks/xstream/converters/collections/TreeMapConverter$NullComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 43
    check-cast p1, Ljava/lang/Comparable;

    .line 44
    move-object v0, p2

    check-cast v0, Ljava/lang/Comparable;

    .line 45
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

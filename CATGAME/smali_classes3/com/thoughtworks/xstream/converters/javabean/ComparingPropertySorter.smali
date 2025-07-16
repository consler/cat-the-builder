.class public Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;
.super Ljava/lang/Object;
.source "ComparingPropertySorter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/javabean/PropertySorter;


# instance fields
.field private final comparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;->comparator:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 32
    new-instance p1, Ljava/util/TreeMap;

    iget-object v0, p0, Lcom/thoughtworks/xstream/converters/javabean/ComparingPropertySorter;->comparator:Ljava/util/Comparator;

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 33
    invoke-virtual {p1, p2}, Ljava/util/TreeMap;->putAll(Ljava/util/Map;)V

    return-object p1
.end method

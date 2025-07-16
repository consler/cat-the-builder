.class public Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter;
.super Ljava/lang/Object;
.source "XStream12FieldKeySorter.java"

# interfaces
.implements Lcom/thoughtworks/xstream/converters/reflection/FieldKeySorter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sort(Ljava/lang/Class;Ljava/util/Map;)Ljava/util/Map;
    .locals 1

    .line 28
    new-instance p1, Ljava/util/TreeMap;

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter$1;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/XStream12FieldKeySorter;)V

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 40
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 41
    invoke-interface {p2}, Ljava/util/Map;->clear()V

    .line 42
    invoke-interface {p2, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p2
.end method

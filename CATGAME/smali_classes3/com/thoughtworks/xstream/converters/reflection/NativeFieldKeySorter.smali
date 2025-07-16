.class public Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter;
.super Ljava/lang/Object;
.source "NativeFieldKeySorter.java"

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

    new-instance v0, Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter$1;

    invoke-direct {v0, p0}, Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter$1;-><init>(Lcom/thoughtworks/xstream/converters/reflection/NativeFieldKeySorter;)V

    invoke-direct {p1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 40
    invoke-interface {p1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p1
.end method

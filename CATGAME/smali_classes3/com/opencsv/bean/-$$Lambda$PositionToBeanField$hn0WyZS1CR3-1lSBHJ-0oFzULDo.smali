.class public final synthetic Lcom/opencsv/bean/-$$Lambda$PositionToBeanField$hn0WyZS1CR3-1lSBHJ-0oFzULDo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$PositionToBeanField$hn0WyZS1CR3-1lSBHJ-0oFzULDo;->f$0:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$PositionToBeanField$hn0WyZS1CR3-1lSBHJ-0oFzULDo;->f$0:Ljava/lang/Integer;

    check-cast p1, Lorg/apache/commons/lang3/Range;

    invoke-static {v0, p1}, Lcom/opencsv/bean/PositionToBeanField;->lambda$contains$0(Ljava/lang/Integer;Lorg/apache/commons/lang3/Range;)Z

    move-result p1

    return p1
.end method

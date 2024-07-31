.class public final synthetic Lcom/opencsv/bean/-$$Lambda$shQKrlCoKy2a_F3qPlEpUzdppCE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/bean/ComplexFieldMapEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/bean/ComplexFieldMapEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$shQKrlCoKy2a_F3qPlEpUzdppCE;->f$0:Lcom/opencsv/bean/ComplexFieldMapEntry;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$shQKrlCoKy2a_F3qPlEpUzdppCE;->f$0:Lcom/opencsv/bean/ComplexFieldMapEntry;

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/opencsv/bean/ComplexFieldMapEntry;->contains(Ljava/lang/Comparable;)Z

    move-result p1

    return p1
.end method

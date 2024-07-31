.class public final synthetic Lcom/opencsv/bean/-$$Lambda$FieldAccess$ecAoc_s_Q9Wa6s0315OVBlJCT7g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/opencsv/bean/function/AccessorInvoker;


# instance fields
.field public final synthetic f$0:Lcom/opencsv/bean/FieldAccess;


# direct methods
.method public synthetic constructor <init>(Lcom/opencsv/bean/FieldAccess;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$FieldAccess$ecAoc_s_Q9Wa6s0315OVBlJCT7g;->f$0:Lcom/opencsv/bean/FieldAccess;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$FieldAccess$ecAoc_s_Q9Wa6s0315OVBlJCT7g;->f$0:Lcom/opencsv/bean/FieldAccess;

    invoke-virtual {v0, p1}, Lcom/opencsv/bean/FieldAccess;->lambda$determineAccessorMethod$1$FieldAccess(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

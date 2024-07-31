.class public final synthetic Lcom/opencsv/bean/-$$Lambda$FieldAccess$mY5fJPA0YzdOKobN62WL-1D2Vfg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/opencsv/bean/function/AccessorInvoker;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$FieldAccess$mY5fJPA0YzdOKobN62WL-1D2Vfg;->f$0:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$FieldAccess$mY5fJPA0YzdOKobN62WL-1D2Vfg;->f$0:Ljava/lang/reflect/Method;

    invoke-static {v0, p1}, Lcom/opencsv/bean/FieldAccess;->lambda$determineAccessorMethod$0(Ljava/lang/reflect/Method;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

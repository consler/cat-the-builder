.class public final synthetic Lcom/opencsv/bean/-$$Lambda$FieldAccess$COSJmt1pEA7KonMXVq3enlh_HB0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/opencsv/bean/function/AssignmentInvoker;


# instance fields
.field public final synthetic f$0:Ljava/lang/reflect/Method;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opencsv/bean/-$$Lambda$FieldAccess$COSJmt1pEA7KonMXVq3enlh_HB0;->f$0:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/opencsv/bean/-$$Lambda$FieldAccess$COSJmt1pEA7KonMXVq3enlh_HB0;->f$0:Ljava/lang/reflect/Method;

    invoke-static {v0, p1, p2}, Lcom/opencsv/bean/FieldAccess;->lambda$determineAssignmentMethod$2(Ljava/lang/reflect/Method;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

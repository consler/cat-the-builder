.class final synthetic Lorg/catrobat/paintroid/ui/ToastFactory$cancelToast$1;
.super Lkotlin/jvm/internal/MutablePropertyReference0Impl;
.source "ToastFactory.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    k = 0x3
    mv = {
        0x1,
        0x4,
        0x2
    }
.end annotation


# direct methods
.method constructor <init>(Lorg/catrobat/paintroid/ui/ToastFactory;)V
    .locals 6

    const-class v2, Lorg/catrobat/paintroid/ui/ToastFactory;

    const-string v3, "currentToast"

    const-string v4, "getCurrentToast()Landroid/widget/Toast;"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lkotlin/jvm/internal/MutablePropertyReference0Impl;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/ToastFactory$cancelToast$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lorg/catrobat/paintroid/ui/ToastFactory;

    .line 31
    invoke-static {v0}, Lorg/catrobat/paintroid/ui/ToastFactory;->access$getCurrentToast$p(Lorg/catrobat/paintroid/ui/ToastFactory;)Landroid/widget/Toast;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    iget-object v0, p0, Lorg/catrobat/paintroid/ui/ToastFactory$cancelToast$1;->receiver:Ljava/lang/Object;

    check-cast v0, Lorg/catrobat/paintroid/ui/ToastFactory;

    .line 31
    move-object v1, p1

    check-cast v1, Landroid/widget/Toast;

    invoke-static {v0, v1}, Lorg/catrobat/paintroid/ui/ToastFactory;->access$setCurrentToast$p(Lorg/catrobat/paintroid/ui/ToastFactory;Landroid/widget/Toast;)V

    return-void
.end method

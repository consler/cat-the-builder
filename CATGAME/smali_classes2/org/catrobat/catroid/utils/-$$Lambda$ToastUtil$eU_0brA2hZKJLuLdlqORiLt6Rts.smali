.class public final synthetic Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:I

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;->f$1:Ljava/lang/String;

    iput p3, p0, Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;->f$2:I

    iput p4, p0, Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;->f$1:Ljava/lang/String;

    iget v2, p0, Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;->f$2:I

    iget v3, p0, Lorg/catrobat/catroid/utils/-$$Lambda$ToastUtil$eU_0brA2hZKJLuLdlqORiLt6Rts;->f$3:I

    invoke-static {v0, v1, v2, v3}, Lorg/catrobat/catroid/utils/ToastUtil;->lambda$createToast$0(Landroid/content/Context;Ljava/lang/String;II)V

    return-void
.end method

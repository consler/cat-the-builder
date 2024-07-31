.class public final synthetic Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$k74wORVGoxxJOinDGT-5dZ5tKKs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lorg/catrobat/catroid/camera/CameraManager;


# direct methods
.method public synthetic constructor <init>(Lorg/catrobat/catroid/camera/CameraManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$k74wORVGoxxJOinDGT-5dZ5tKKs;->f$0:Lorg/catrobat/catroid/camera/CameraManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lorg/catrobat/catroid/formulaeditor/function/-$$Lambda$TextBlockFunctionProvider$k74wORVGoxxJOinDGT-5dZ5tKKs;->f$0:Lorg/catrobat/catroid/camera/CameraManager;

    invoke-static {v0}, Lorg/catrobat/catroid/formulaeditor/function/TextBlockFunctionProvider;->lambda$checkTextDetectionEnabled$0(Lorg/catrobat/catroid/camera/CameraManager;)V

    return-void
.end method

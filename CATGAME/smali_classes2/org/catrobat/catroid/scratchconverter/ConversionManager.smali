.class public interface abstract Lorg/catrobat/catroid/scratchconverter/ConversionManager;
.super Ljava/lang/Object;
.source "ConversionManager.java"

# interfaces
.implements Lorg/catrobat/catroid/scratchconverter/Client$ConnectAuthCallback;
.implements Lorg/catrobat/catroid/scratchconverter/Client$ConvertCallback;
.implements Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;


# virtual methods
.method public abstract addBaseInfoViewListener(Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;)V
.end method

.method public abstract addGlobalDownloadCallback(Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)V
.end method

.method public abstract addGlobalJobViewListener(Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)V
.end method

.method public abstract addJobViewListener(JLorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)V
.end method

.method public abstract connectAndAuthenticate()V
.end method

.method public abstract convertProgram(JLjava/lang/String;Lcom/google/android/gms/common/images/WebImage;Z)V
.end method

.method public abstract getNumberOfJobsInProgress()I
.end method

.method public abstract isJobDownloading(J)Z
.end method

.method public abstract isJobInProgress(J)Z
.end method

.method public abstract removeBaseInfoViewListener(Lorg/catrobat/catroid/ui/scratchconverter/BaseInfoViewListener;)Z
.end method

.method public abstract removeGlobalDownloadCallback(Lorg/catrobat/catroid/scratchconverter/Client$ProjectDownloadCallback;)Z
.end method

.method public abstract removeGlobalJobViewListener(Lorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)Z
.end method

.method public abstract removeJobViewListener(JLorg/catrobat/catroid/ui/scratchconverter/JobViewListener;)Z
.end method

.method public abstract setCurrentActivity(Landroidx/appcompat/app/AppCompatActivity;)V
.end method

.method public abstract shutdown()V
.end method

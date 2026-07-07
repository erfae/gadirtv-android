.class interface abstract Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper$Ncg2SdkWrapperListener;
.super Ljava/lang/Object;
.source "Ncg2SdkWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/magoware/magoware/webtv/pallycon/Ncg2SdkWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Ncg2SdkWrapperListener"
.end annotation


# virtual methods
.method public abstract onAppFinishedError(Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation
.end method

.method public abstract onCompletedAcquireLicense(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mFilePath"
        }
    .end annotation
.end method

.method public abstract onCompletedUpdateSecureTime()V
.end method

.method public abstract onError(Ljava/lang/Exception;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "e",
            "msg"
        }
    .end annotation
.end method

.method public abstract onInvalidNcgLicense(Ljava/lang/String;Lcom/inka/ncg2/Ncg2Agent$LicenseValidation;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "contentPath",
            "lv"
        }
    .end annotation
.end method

.method public abstract onSecurityError(Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation
.end method

.method public abstract onServerError(Lcom/inka/ncg2/Ncg2ServerResponseErrorException;Ljava/lang/String;I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "e",
            "string",
            "errorCode"
        }
    .end annotation
.end method

.method public abstract onWebserverError(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "errorMessage"
        }
    .end annotation
.end method

.method public abstract onWebserverNotification(ILjava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "notifyCode",
            "notifyMsg"
        }
    .end annotation
.end method

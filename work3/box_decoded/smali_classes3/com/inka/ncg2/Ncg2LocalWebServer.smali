.class public interface abstract Lcom/inka/ncg2/Ncg2LocalWebServer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;
    }
.end annotation


# virtual methods
.method public abstract addHttpLiveStreamUrlForPlayback(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addHttpLiveStreamUrlForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addHttpLiveStreamUrlForPlayback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addHttpLiveStreamUrlForPlayback(Ljava/lang/String;Z)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addHttpLiveStreamUrlForPlaybackWithoutChecking(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addLocalFilePathForPlayback(Ljava/lang/String;J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addLocalFilePathForPlayback(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addLocalFilePathForPlaybackByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addLocalFilePathForPlaybackByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addProgressiveDownloadUrlForPlayback(Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract addProgressiveDownloadUrlForPlaybackByCID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inka/ncg2/Ncg2InvalidLicenseException;,
            Lcom/inka/ncg2/Ncg2HttpException;,
            Lcom/inka/ncg2/Ncg2Exception;
        }
    .end annotation
.end method

.method public abstract clearPlaybackUrls()V
.end method

.method public abstract isHdmiDetecting()Z
.end method

.method public abstract setCookieChecking(Z)V
.end method

.method public abstract setCustomCookie(Ljava/lang/String;)V
.end method

.method public abstract setEnableMultipleConnectDetection(Z)V
.end method

.method public abstract setEnableUserAgentChecking(Z)V
.end method

.method public abstract setWebServerListener(Lcom/inka/ncg2/Ncg2LocalWebServer$WebServerListener;)V
.end method

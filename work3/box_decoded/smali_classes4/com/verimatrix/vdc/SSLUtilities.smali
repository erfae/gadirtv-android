.class final Lcom/verimatrix/vdc/SSLUtilities;
.super Ljava/lang/Object;
.source "SSLUtilities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/verimatrix/vdc/SSLUtilities$FakeX509TrustManager;,
        Lcom/verimatrix/vdc/SSLUtilities$FakeHostnameVerifier;,
        Lcom/verimatrix/vdc/SSLUtilities$_FakeX509TrustManager;,
        Lcom/verimatrix/vdc/SSLUtilities$_FakeHostnameVerifier;
    }
.end annotation


# static fields
.field private static __hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private static __trustManagers:[Ljavax/net/ssl/TrustManager;

.field private static _hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private static _trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static __trustAllHostnames()V
    .locals 1

    .line 49
    sget-object v0, Lcom/verimatrix/vdc/SSLUtilities;->__hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/verimatrix/vdc/SSLUtilities$_FakeHostnameVerifier;

    invoke-direct {v0}, Lcom/verimatrix/vdc/SSLUtilities$_FakeHostnameVerifier;-><init>()V

    sput-object v0, Lcom/verimatrix/vdc/SSLUtilities;->__hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 53
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/SSLUtilities;->__hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 54
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method private static __trustAllHttpsCertificates()V
    .locals 4

    .line 68
    sget-object v0, Lcom/verimatrix/vdc/SSLUtilities;->__trustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    .line 69
    new-instance v2, Lcom/verimatrix/vdc/SSLUtilities$_FakeX509TrustManager;

    invoke-direct {v2}, Lcom/verimatrix/vdc/SSLUtilities$_FakeX509TrustManager;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/verimatrix/vdc/SSLUtilities;->__trustManagers:[Ljavax/net/ssl/TrustManager;

    :cond_0
    :try_start_0
    const-string v0, "SSL"

    .line 73
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 74
    sget-object v2, Lcom/verimatrix/vdc/SSLUtilities;->__trustManagers:[Ljavax/net/ssl/TrustManager;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 78
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static _trustAllHostnames()V
    .locals 1

    .line 100
    sget-object v0, Lcom/verimatrix/vdc/SSLUtilities;->_hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Lcom/verimatrix/vdc/SSLUtilities$FakeHostnameVerifier;

    invoke-direct {v0}, Lcom/verimatrix/vdc/SSLUtilities$FakeHostnameVerifier;-><init>()V

    sput-object v0, Lcom/verimatrix/vdc/SSLUtilities;->_hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 104
    :cond_0
    sget-object v0, Lcom/verimatrix/vdc/SSLUtilities;->_hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V

    return-void
.end method

.method private static _trustAllHttpsCertificates()V
    .locals 4

    .line 115
    sget-object v0, Lcom/verimatrix/vdc/SSLUtilities;->_trustManagers:[Ljavax/net/ssl/TrustManager;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    .line 116
    new-instance v2, Lcom/verimatrix/vdc/SSLUtilities$FakeX509TrustManager;

    invoke-direct {v2}, Lcom/verimatrix/vdc/SSLUtilities$FakeX509TrustManager;-><init>()V

    aput-object v2, v0, v1

    sput-object v0, Lcom/verimatrix/vdc/SSLUtilities;->_trustManagers:[Ljavax/net/ssl/TrustManager;

    :cond_0
    :try_start_0
    const-string v0, "SSL"

    .line 120
    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    sget-object v2, Lcom/verimatrix/vdc/SSLUtilities;->_trustManagers:[Ljavax/net/ssl/TrustManager;

    new-instance v3, Ljava/security/SecureRandom;

    invoke-direct {v3}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 125
    invoke-static {v0}, Ljavax/net/ssl/HttpsURLConnection;->setDefaultSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    return-void

    :catch_0
    move-exception v0

    .line 123
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static isDeprecatedSSLProtocol()Z
    .locals 2

    const-string v0, "java.protocol.handler.pkgs"

    .line 91
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal.www.protocol"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static trustAllHostnames()V
    .locals 1

    .line 135
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->isDeprecatedSSLProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->__trustAllHostnames()V

    goto :goto_0

    .line 138
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->_trustAllHostnames()V

    :goto_0
    return-void
.end method

.method static trustAllHttpsCertificates()V
    .locals 1

    .line 148
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->isDeprecatedSSLProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->__trustAllHttpsCertificates()V

    goto :goto_0

    .line 151
    :cond_0
    invoke-static {}, Lcom/verimatrix/vdc/SSLUtilities;->_trustAllHttpsCertificates()V

    :goto_0
    return-void
.end method

.class public interface abstract Lcom/visualon/OSMPPlayer/VOOSMPDrmLicenseManager;
.super Ljava/lang/Object;
.source "VOOSMPDrmLicenseManager.java"


# static fields
.field public static final CUSTOM_DATA:Ljava/lang/String; = "CUSTOM_DATA"

.field public static final DRM_TYPE:Ljava/lang/String; = "DRM_TYPE"

.field public static final LA_REQUEST_PROPERTIES:Ljava/lang/String; = "LA_REQUEST_PROPERTIES"

.field public static final LA_URL:Ljava/lang/String; = "LA_URL"

.field public static final LICENSE_RETRIEVER:Ljava/lang/String; = "LICENSE_RETRIEVER"

.field public static final PLAYREADY:I = 0x1

.field public static final WIDEVINE:I = 0x2


# virtual methods
.method public abstract addPreference(Ljava/util/HashMap;)V
.end method

.method public abstract getContext()J
.end method

.method public abstract getPreference()Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/util/HashMap;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVenderID()Ljava/lang/String;
.end method

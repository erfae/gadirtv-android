.class Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;
.super Ljava/lang/Object;
.source "VOOSMPAdEventInfoImpl.java"

# interfaces
.implements Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfo;


# static fields
.field private static final TAG:Ljava/lang/String; = "@@@VOOSMPSDKEventInfoImpl"


# instance fields
.field private mExtraObject:Ljava/lang/Object;

.field private mJSONObject:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;Ljava/lang/String;)V
    .locals 6

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;->mJSONObject:Lorg/json/JSONObject;

    .line 217
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;->mExtraObject:Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "@@@VOOSMPSDKEventInfoImpl"

    if-nez p2, :cond_0

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "sdkEventStr is null!"

    .line 190
    invoke-static {v2, p2, p1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 194
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;->mJSONObject:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 196
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JSONException caught when parsing sdkEvent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {v3}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ". SDKEvent string: "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    .line 196
    invoke-static {v2, p2, v1}, Lcom/visualon/OSMPUtils/voLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    :goto_0
    iput-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;->mExtraObject:Ljava/lang/Object;

    .line 200
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;->mJSONObject:Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    const-string v0, "eventSource"

    .line 201
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "IMADAI"

    .line 202
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 203
    iget-object p2, p0, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;->mJSONObject:Lorg/json/JSONObject;

    const-string v0, "extraObjParName"

    .line 204
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 206
    sget-object v0, Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;->VO_OSMP_SDK_IMADAI:Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;

    .line 207
    invoke-virtual {p1, v0, p2}, Lcom/visualon/OSMPAdMgr/VOOSMPAdMgrImpl;->getSDKParam(Lcom/visualon/OSMPAdMgr/VOOSMPAdType$VO_OSMP_SDK_ID;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;->mExtraObject:Ljava/lang/Object;

    :cond_1
    return-void
.end method


# virtual methods
.method public getExtraObject()Ljava/lang/Object;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;->mExtraObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/visualon/OSMPAdMgr/VOOSMPSDKEventInfoImpl;->mJSONObject:Lorg/json/JSONObject;

    return-object v0
.end method

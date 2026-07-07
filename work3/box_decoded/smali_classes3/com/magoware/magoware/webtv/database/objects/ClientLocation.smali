.class public Lcom/magoware/magoware/webtv/database/objects/ClientLocation;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "ClientLocation.java"


# instance fields
.field public as:Ljava/lang/String;

.field public city:Ljava/lang/String;

.field public country:Ljava/lang/String;

.field public countryCode:Ljava/lang/String;

.field public isp:Ljava/lang/String;

.field public lat:Ljava/lang/String;

.field public lon:Ljava/lang/String;

.field public org:Ljava/lang/String;

.field public query:Ljava/lang/String;

.field public region:Ljava/lang/String;

.field public regionName:Ljava/lang/String;

.field public status:Ljava/lang/String;

.field public timezone:Ljava/lang/String;

.field public zip:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 10
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->as:Ljava/lang/String;

    .line 11
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->city:Ljava/lang/String;

    .line 12
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->country:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->countryCode:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->isp:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->lat:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->lon:Ljava/lang/String;

    .line 17
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->org:Ljava/lang/String;

    .line 18
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->query:Ljava/lang/String;

    .line 19
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->region:Ljava/lang/String;

    .line 20
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->regionName:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->status:Ljava/lang/String;

    .line 22
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->timezone:Ljava/lang/String;

    .line 23
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/ClientLocation;->zip:Ljava/lang/String;

    return-void
.end method

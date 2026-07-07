.class public Lcom/magoware/magoware/webtv/database/objects/SettingsObject;
.super Lcom/framework/utilityframe/database/DatabaseObject;
.source "SettingsObject.java"


# instance fields
.field public activity_timeout:I

.field public ad_channel_url:Ljava/lang/String;

.field public ad_playing_duration:I

.field public auto_timezone:Z

.field public available_upgrade:Z

.field public background_url:Ljava/lang/String;

.field public channel_log_time:I

.field public days_left_message:Ljava/lang/String;

.field public daysleft:I

.field public get_ads:I

.field public iptimezone:F

.field public livetvrefresh:Z

.field public log_event_interval:I

.field public logo_url:Ljava/lang/String;

.field public mainmenurefresh:Z

.field public movie_url:Ljava/lang/String;

.field public online_payment_url:Ljava/lang/String;

.field public pin:Ljava/lang/String;

.field public player:Ljava/lang/String;

.field public portrait_background_url:Ljava/lang/String;

.field public record_count:I

.field public resume_movie:Z

.field public resume_position:I

.field public showadult:Z

.field public timezone:I

.field public vast_ad_url:Ljava/lang/String;

.field public vod_background_url:Ljava/lang/String;

.field public vodrefresh:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 11
    const-class v0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/framework/utilityframe/database/DatabaseObject;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 47
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->ad_channel_url:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->ad_playing_duration:I

    const v2, 0x4c4b40

    .line 52
    iput v2, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->daysleft:I

    .line 13
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->logo_url:Ljava/lang/String;

    .line 14
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->background_url:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->portrait_background_url:Ljava/lang/String;

    .line 16
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->vod_background_url:Ljava/lang/String;

    .line 17
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->livetvrefresh:Z

    .line 18
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->mainmenurefresh:Z

    .line 19
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->vodrefresh:Z

    const-string v2, "default"

    .line 20
    iput-object v2, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->player:Ljava/lang/String;

    .line 21
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->pin:Ljava/lang/String;

    .line 22
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->showadult:Z

    .line 23
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->timezone:I

    const/4 v2, 0x1

    .line 24
    iput-boolean v2, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->auto_timezone:Z

    const/4 v2, 0x0

    .line 25
    iput v2, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->iptimezone:F

    .line 26
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->activity_timeout:I

    .line 27
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->channel_log_time:I

    .line 28
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->days_left_message:Ljava/lang/String;

    .line 29
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->available_upgrade:Z

    .line 30
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->record_count:I

    .line 31
    iput-boolean v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->resume_movie:Z

    .line 32
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->resume_position:I

    .line 33
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->movie_url:Ljava/lang/String;

    .line 34
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->online_payment_url:Ljava/lang/String;

    const/16 v2, 0x258

    .line 35
    iput v2, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->log_event_interval:I

    .line 36
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->get_ads:I

    .line 37
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->vast_ad_url:Ljava/lang/String;

    .line 38
    iput v0, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->ad_playing_duration:I

    .line 39
    iput-object v1, p0, Lcom/magoware/magoware/webtv/database/objects/SettingsObject;->ad_channel_url:Ljava/lang/String;

    return-void
.end method
